import React from 'react';
import styled from 'styled-components';

const CodeEntryContainer = styled.div`
  background-color: ${(props) => props.theme.colors.black.w00};
  height: 100vh;
`;

const CodeInputPage = () => {
    return <CodeEntryContainer></CodeEntryContainer>;
};

export default CodeInputPage;

