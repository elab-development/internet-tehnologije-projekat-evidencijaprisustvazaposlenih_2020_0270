import React from 'react';

const GlobalContext = React.createContext({
  loggedInUserData: null,
  setLoggedInUserData: () => {},
  monthIndex: 0,
  setMonthIndex: (index) => {},
  smallCalendarMonth: 0,
  setSmallCalendarMonth: (index) => {},
  daySelected: null,
  setDaySelected: (day) => {},
  showEventModal: false,
  setShowEventModal: () => {},
  showCategoriesModal: false,
  setShowCategoriesModal: () => {},
  showDeskModal: false,
  setShowDeskModal: () => {},
  categories: [],
  setCategories: () => {},
  selectedEvent: null,
  setSelectedEvent: () => {},
  allDesks: [],
  setAllDesks: () => {},
  flag: false,
  setFlag: () => {},
  deskEvents: [],
  setDeskEvents: () => {},
  administrativeEvents: [],
  setAdministrativeEvents: () => {},
  allEvents: [],
  setAllEvents: () => {},
  publicHolidays: [],
  setPublicHolidays: () => {},
});

export default GlobalContext;