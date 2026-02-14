import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';

const LibIcon = (props) => {
    const animationProps = {
        spin: props.animation === 'spin',
        spinPulse: props.animation === 'spinPulse',
        spinReverse: props.animation === 'spinReverse',
        pulse: props.animation === 'pulse',
        beat: props.animation === 'beat',
        fade: props.animation === 'fade',
        beatFade: props.animation === 'beatFade',
        bounce: props.animation === 'bounce',
        shake: props.animation === 'shake',
    };

    return <FontAwesomeIcon {...props} {...animationProps} />;
};

export default LibIcon;
