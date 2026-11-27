import React, { useEffect, useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { Vacation } from '../../models/Vacation';
import { RootState, store } from '../../redux/Store';
import { deleteVacationAction } from '../../redux/VacationReducer';
import { api } from '../../utils/dbURL_key';
import { useSelector } from 'react-redux';
import './VacationCard.css';
import { FollowVacation } from '../../Hooks/followhook';

type VacationCardProps = {
  vacation: Vacation;
};

const dateFormat = (date: string) => {
  const [year, month, day] = date.split('T')[0].split('-');
  return `${day}/${month}/${year}`;
};

const VacationCard: React.FC<VacationCardProps> = (props) => {
  const user = useSelector((state: RootState) => state.auth.user);
  const isAdmin = user?.level === 1 ? true : false;

  const navigate = useNavigate();

  const followers = useSelector((state: RootState) => state.follows.follows);
  const {
    addFollow,
    removeFollow,
    getAllFollowers,
    removeAllVacationFollowers,
  } = FollowVacation();
  const currentUserId = user?.id || 0;

  const isVacationFollowed = followers.some(
    (follow) =>
      follow.vacationId === props.vacation.id && follow.userId === currentUserId
  );

  const [isFollowing, setIsFollowing] = useState(isVacationFollowed);
  const [isModalOpen, setIsModalOpen] = useState(false);

  const followCount = followers.filter(
    (f) => f.vacationId === props.vacation.id
  ).length;

  useEffect(() => {
    getAllFollowers();
  }, []);

  const handleDelete = async () => {
    setIsModalOpen(true);
  };

  const handleConfirmDelete = async () => {
    try {
      await removeAllVacationFollowers(props.vacation.id);
      const response = await api.delete(`/vacations/${props.vacation.id}`);
      if (response.status === 200) {
        store.dispatch(deleteVacationAction(props.vacation.id));
      }
    } catch (error: any) {
      console.log(error);
    }
    setIsModalOpen(false);
  };

  const handleCancelDelete = () => {
    setIsModalOpen(false);
  };

  const handleEdit = () => {
    navigate(`/editVacation/${props.vacation.id}`);
  };

  const handleCheckboxChange = async () => {
    if (isFollowing) {
      await removeFollow(currentUserId, props.vacation.id);
    } else {
      await addFollow(currentUserId, props.vacation.id);
    }
    setIsFollowing(!isFollowing);
  };

  return (
    <div className="vacationCard">
      {!isAdmin ? (
        <div>
          <svg
            onClick={handleCheckboxChange}
            style={{ cursor: 'pointer' }}
            width="30"
            height="30"
            viewBox="0 0 24 24"
            fill={isFollowing ? 'red' : 'none'}
            stroke={isFollowing ? 'red' : 'currentColor'}
            strokeWidth="2"
            strokeLinecap="round"
            strokeLinejoin="round"
          >
            <path d="M12 21.35l-1.45-1.32C5.4 16.07 2 13.23 2 9.5 2 7.02 3.61 5 6 5c1.57 0 3.09.61 4 1.68A4.99 4.99 0 0 0 12 5c2.39 0 4 2.02 4 4.5 0 3.73-3.4 6.57-8.55 10.54L12 21.35z" />
          </svg>
          <div className="btnAction">
            <label>
              <h4>Followers: {followCount}</h4>
            </label>
          </div>
        </div>
      ) : (
        <>
          <div className="btnAction">
            <button className="vacation_edit" onClick={handleEdit}>
              Edit
            </button>
            <button className="vacation_delete" onClick={handleDelete}>
              Delete
            </button>
          </div>
        </>
      )}
      <div className="vacation_title">
        Destination: {props.vacation.destination}
        <div className="vacation_date">
          {dateFormat(props.vacation.startDate)} to{' '}
          {dateFormat(props.vacation.endDate)}
        </div>
      </div>
      <div className="vacation_description">
        Description: {props.vacation.description}
      </div>
      <div className="vacation_image">
        <img
          alt="vacation"
          src={`http://localhost:4000/assets/${props.vacation.image}`}
          loading="lazy"
        />
      </div>
      <div className="vacation_price">
        Price: {props.vacation.price} <span>$</span>
      </div>
      {isModalOpen && (
        <div className="modal_overlay">
          <div className="modal_content">
            <h2>Are you sure you want to delete this vacation?</h2>
            <div className="modal_actions">
              <button onClick={handleCancelDelete}>Cancel</button>
              <button onClick={handleConfirmDelete}>Delete</button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
};

export default VacationCard;
