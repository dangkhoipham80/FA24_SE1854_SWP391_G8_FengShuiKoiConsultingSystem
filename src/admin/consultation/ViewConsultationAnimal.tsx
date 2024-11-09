import React from "react";

import '../../css/boostrap.css';
import 'bootstrap/dist/css/bootstrap.min.css';
import SidebarAdmin from "../layouts/slideBar";
import NavbarAdmin from "../layouts/headerAdmin";
import FooterAdmin from "../layouts/footerAdmin";
import ConsultationAnimalCollection from "./collection/ConsultationAnimalCollection";

const ViewConsultationAnimal: React.FC = () => {
  return (
    <div className="container-fluid position-relative bg-white d-flex p-0">
      <SidebarAdmin />
      <div className="content">
        <NavbarAdmin />
        <div className="container-fluid pt-4 px-4">
          <ConsultationAnimalCollection />
        </div>
        <FooterAdmin />
      </div>
    </div>
  );
};

export default ViewConsultationAnimal;