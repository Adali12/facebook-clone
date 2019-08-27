module SessionsHelper
    def current_clone
        @current_clone ||= Clone.find_by(id: session[:clone_id])
      end
      def logged_in?
        current_clone.present?
      end
end
