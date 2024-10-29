import { BrowserRouter as Router, Route, Routes } from "react-router-dom";
import Login from "../components/Login";
import Authenticate from "../components/Authenticate";
import Blog from "../homepage/Blog";
import ActivateAccount from "../user/ActivateAccount";
import ViewProfile from "../user/ViewProfile";
import Register from "../user/Register";
import Page403 from "../utils/Page403";
import Page404 from "../utils/Page404";
import ForgotPassword from "../user/ForgotPassword";
import ResetPassword from "../user/ResetPassword";
import UpdateProfile from "../user/UpdateProfile";
import AdminRoute from "../admin/AdminRoute";
import AnimalCollection from "../admin/AnimalCollection";
import AdminPage from "../admin/layouts/AdminPage";
import AddKoiFish from "../admin/animal/AddKoiFish";
import ViewAdd from "../admin/animal/layoutAnimal/ViewAdd";
import ViewManagement from "../admin/animal/layoutAnimal/ViewManagement";
import ViewAddShelter from "../admin/shelter/layoutShelter/ViewAddShelter";
import ShelterViewAdmin from "../admin/ShelterCollection";
import ViewManagementShelter from "../admin/shelter/layoutShelter/ViewManagementShelter";
import ViewAddColor from "../admin/color/layoutCokor/ViewAddColor";
import ViewAddShape from "../admin/shape/layoutShape/ViewAddShape";
import ViewColorManagement from "../admin/color/layoutCokor/ViewColorManagement";
import ViewShapeManagement from "../admin/shape/layoutShape/ViewManagementShape";
import ViewUserManagement from "../admin/user/UserManagement";
import ConsultationRequest from "../components/ConsultationRequest"; // Consultation Request
import PaymentPage from "../components/PaymentPage"; // Thanh toán
import BillPage from "../components/BillPage"; // In Bill




const AppRoutes = () => {
  // const ProtectedBlog = AdminRoute(Blog);
  const Page = AdminRoute(AdminPage);
  const PageViewAddKoi = AdminRoute(ViewAdd);
  const PageViewManagementKoi = AdminRoute(ViewManagement);
  const PageViewAddPond = AdminRoute(ViewAddShelter);
  const PageViewAddColor = AdminRoute(ViewAddColor);
  const PageViewAddShape = AdminRoute(ViewAddShape);
  const PageViewColor = AdminRoute(ViewColorManagement);
  const PageViewShape = AdminRoute(ViewShapeManagement);
  const PageViewUser = AdminRoute(ViewUserManagement);

  
  return (
    <Router>
      <Routes>
        <Route path="/login" element={<Login />} />
        <Route path="/view-profile" element={<ViewProfile />} />
        <Route path="/register" element={<Register />} />
        <Route path="/update-profile" element={<UpdateProfile />} />
        <Route path="/authenticate" element={<Authenticate />} />
        <Route path="/" element={<Blog />} />
        <Route path="/403" element={<Page403 />} />
        <Route path="*" element={<Page404 />} />
        <Route path="/activate/:email/:code" element={<ActivateAccount />} />
        <Route path="/forgot-password" element={<ForgotPassword />} />
        <Route path="/reset-password/:email" element={<ResetPassword />} />
        <Route path="/view-koi" element={<PageViewManagementKoi />} />
        <Route path="/add-koi" element={<PageViewAddKoi />} />
        <Route path="/view-ponds" element={<ViewManagementShelter />} />
        <Route path="/add-ponds" element={<PageViewAddPond />} />
        <Route path="/admin-page" element={<Page />} />
        <Route path="/add-color" element={<PageViewAddColor />} />
        <Route path="/add-shape" element={<PageViewAddShape />} />
        <Route path="/view-color" element={<PageViewColor />} />
        <Route path="/view-shape" element={<PageViewShape />} />
        <Route path="/view-user" element={<PageViewUser />} />
        {/* Consultation Request */}
        <Route path="/consultation-request" element={<ConsultationRequest />} />
        {/* Thanh toán Consultation Request */}
        <Route path="/consultation-request/:requestId/payment" element={<PaymentPage />} />
        {/* In Bill */}
        <Route path="/bill/:billId" element={<BillPage />} />






        
        <Route path="/view-ponds" element={<ShelterViewAdmin />} />

        
      </Routes>
    </Router>
  );
};

export default AppRoutes;