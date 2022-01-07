export default function Index() {
  return null;
}

export function getServerSideProps() {
  return {
    redirect: {
      permanent: false,
      destination: "/login",
    },
    props: {},
  };
}
