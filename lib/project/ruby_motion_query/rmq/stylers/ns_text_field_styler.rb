module RubyMotionQuery
  module Stylers
    class NSTextFieldStyler < NSControlStyler
      #include Protocols::UITextInputTraits

      def act_as_label
        view.editable = false
        view.bezeled = false
        view.drawsBackground = false
      end

      def placeholder ; view.placeholderString ; end
      def placeholder=(v) ; view.placeholderString = v ; end

      def attributed_placeholder ; view.placeholderAttributedString ; end
      def attributed_placeholder=(v) ; view.placeholderAttributedString = v ; end
=begin
      def default_text_attributes ; view.defaultTextAttributes ; end
      def default_text_attributes=(v) ; view.defaultTextAttributes = v ; end

=end
      def text_color ; view.textColor ; end
      def text_color=(v) ; view.textColor = v ; end
      alias :color :text_color
      alias :color= :text_color=

      def background_color=(value)
        view.drawsBackground = true
        view.setBackgroundColor value
      end

=begin
      def typing_attributes ; view.typingAttributes ; end
      def typing_attributes=(v) ; view.typingAttributes = v ; end

      # Sizing the Text Field's Text
      def adjusts_font_size_to_fit_width ; view.adjustsFontSizeToFitWidth ; end
      def adjusts_font_size_to_fit_width=(v) ; view.adjustsFontSizeToFitWidth = v ; end
      alias :adjusts_font_size= :adjusts_font_size_to_fit_width=
      alias :adjusts_font_size :adjusts_font_size_to_fit_width

      def minimum_font_size ; view.minimumFontSize ; end
      def minimum_font_size=(v) ; view.minimumFontSize = v ; end

      # Managing the Eiting Behavior
      def editing ; view.editing ; end
      def editing=(v) ; view.editing = v ; end

      def clears_on_begin_editing ; view.clearsOnBeginEditing ; end
      def clears_on_begin_editing=(v) ; view.clearsOnBeginEditing = v ; end

      def clears_on_insertion ; view.clearsOnInsertion ; end
      def clears_on_insertion=(v) ; view.clearsOnInsertion = v ; end

      def allows_editing_text_attributes ; view.allowsEditingTextAttributes ; end
      def allows_editing_text_attributes=(v) ; view.allowsEditingTextAttributes = v ; end

      # Setting the View's Background Appearance
      def border_style ; view.borderStyle ; end
      def border_style=(v) ; view.setBorderStyle(BORDER_STYLES[v] || v) ; end

      def background ; view.background ; end
      def background=(v) ; view.background = v ; end

      def disabled_background ; view.disabledBackground ; end
      def disabled_background=(v) ; view.disabledBackground = v ; end

      # managing overlay views
      def clear_button_mode ; view.clearButtonMode ; end
      def clear_button_mode=(v) ; view.clearButtonMode = v ; end

      def left_view ; view.leftView ; end
      def left_view=(v) ; view.leftView = v ; end

      def left_view_mode ; view.leftViewMode ; end
      def left_view_mode=(v); view.leftViewMode = TEXT_FIELD_MODES[v] || v ; end

      def right_view ; view.rightView ; end
      def right_view=(v) ; view.rightView = v ; end

      def right_view_mode ; view.rightViewMode ; end
      def right_view_mode=(v); view.rightViewMode = TEXT_FIELD_MODES[v] || v ; end
=end
    end
  end
end
