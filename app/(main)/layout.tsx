import { MobileHeader } from "@/components/mobile-header";
import { MobileSidebar } from "@/components/mobile-sidebar";
import React from "react";

type Props = {
  children: React.ReactNode;
};

const MainLayout = ({ children }: Props) => {
  return (
    <>
      <MobileHeader />
      <MobileSidebar />
      <main className="lg:pl-[256px] h-full pt-[50px] lg:pt-0">
        <div className="bg-red-500 h-full">{children}</div>
      </main>
    </>
  );
};

export default MainLayout;
