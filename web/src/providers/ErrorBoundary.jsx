// yoinked from https://github.com/overextended/ox_lib/blob/master/web/src/providers/errorBoundary.tsx
import { fetchNui } from '@/utils/fetchNui';
import { Component } from 'react';

class ErrorBoundary extends Component {
    constructor(props) {
        super(props);
        this.state = { hasError: false };
    }

    static getDerivedStateFromError(err) {
        return { hasError: true };
    }

    componentDidCatch(error, info) {
        console.error(error, info)
        this.setState({ hasError: false });
        // Will hide frame as soon as we encouter NUI error
        fetchNui('hideFrame')
    }

    render() {
        return this.state.hasError ? null : this.props.children;
    }
}

export default ErrorBoundary;