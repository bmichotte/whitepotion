module RubyMotionQuery
  module Stylers

    class NSButtonStyler < NSControlStyler

      def text=(v)
        view.title = v
      end
      def text
        view.title
      end

      def bezel_style=(v)
        view.bezelStyle = BORDER_STYLES[v] || v
      end

      def bezel_style
        view.bezelStyle
      end

      def act_as_checkbox
        self.button_type = NSSwitchButton
      end

      def button_type=(v)
        view.buttonType = v
      end
      def button_type
        view.buttonType
      end

=begin
      def attributed_text=(value)
        @view.setAttributedTitle(value, forState: UIControlStateNormal)
      end
      def attributed_text
        @view.attributedTitleForState(UIControlStateNormal)
      end

      def color=(value)
        @view.setTitleColor(value, forState: UIControlStateNormal)
      end
      def color
        @view.titleColorForState(UIControlStateNormal)
      end

      def color_highlighted=(value)
        @view.setTitleColor(value, forState: UIControlStateHighlighted)
      end
      def color_highlighted
        @view.titleColorForState(UIControlStateHighlighted)
      end

      def color_disabled=(value)
        @view.setTitleColor(value, forState: UIControlStateDisabled)
      end
      def color_disabled
        @view.titleColorForState(UIControlStateDisabled)
      end

      def tint_color=(value)
        @view.tintColor = value
      end
      def tint_color
        @view.tintColor
      end

      def image_normal=(value)
        @view.setImage value, forState: UIControlStateNormal
      end
      def image_normal
        @view.imageForState(UIControlStateNormal)
      end
      alias :image :image_normal
      alias :image= :image_normal=

      def image_highlighted=(value)
        @view.setImage(value, forState: UIControlStateHighlighted)
      end
      def image_highlighted
        @view.imageForState(UIControlStateHighlighted)
      end

      def image_disabled=(value)
        @view.setImage(value, forState: UIControlStateDisabled)
      end
      def image_disabled
        @view.imageForState(UIControlStateDisabled)
      end

      def background_image_normal=(value)
        @view.setBackgroundImage(value, forState: UIControlStateNormal)
      end
      def background_image_normal
        @view.backgroundImageForState(UIControlStateNormal)
      end
      alias :background_image :background_image_normal
      alias :background_image= :background_image_normal=

      def background_image_highlighted=(value)
        @view.setBackgroundImage(value, forState: UIControlStateHighlighted)
      end
      def background_image_highlighted
        @view.backgroundImageForState(UIControlStateHighlighted)
      end

      def background_image_selected=(value)
        @view.setBackgroundImage(value, forState: UIControlStateSelected)
      end
      def background_image_selected
        @view.backgroundImageForState(UIControlStateSelected)
      end

      def background_image_disabled=(value)
        @view.setBackgroundImage(value, forState: UIControlStateDisabled)
      end
      def background_image_disabled
        @view.backgroundImageForState(UIControlStateDisabled)
      end

      def adjust_image_when_highlighted=(value)
        @view.adjustsImageWhenHighlighted = value
      end

      def adjust_image_when_highlighted
        @view.adjustsImageWhenHighlighted
      end

      def adjust_image_when_disabled=(value)
        @view.adjustsImageWhenDisabled = value
      end

      def adjust_image_when_disabled
        @view.adjustsImageWhenDisabled
      end

      def selected=(value)
        @view.setSelected(value)
      end

      def selected
        @view.isSelected
      end

      # Accepts UIEdgeInsetsMake OR and array of values to be the inset.
      # st.title_edge_insets = UIEdgeInsetsMake(0, 10.0, 0, 0)
      # OR
      # st.title_edge_insets = [0, 10.0, 0, 0]
      def title_edge_insets=(value)
        value = UIEdgeInsetsMake(value[0], value[1], value[2], value[3]) if value.is_a? Array
        @view.setTitleEdgeInsets(value)
      end

      def title_edge_insets
        @view.titleEdgeInsets
      end

      # Accepts UIEdgeInsetsMake OR and array of values to be the inset.
      # st.image_edge_insets = UIEdgeInsetsMake(0, 10.0, 0, 0)
      # OR
      # st.image_edge_insets = [0, 10.0, 0, 0]
      def image_edge_insets=(value)
        value = UIEdgeInsetsMake(value[0], value[1], value[2], value[3]) if value.is_a? Array
        @view.setImageEdgeInsets(value)
      end

      def image_edge_insets
        @view.imageEdgeInsets
      end

      def text_highlighted=(value)
        @view.setTitle(value, forState:UIControlStateHighlighted)
      end
      def text_highlighted
        @view.titleForState(UIControlStateHighlighted)
      end

      def attributed_text_highlighted=(value)
        @view.setAttributedTitle(value, forState: UIControlStateHighlighted)
      end
      def attributed_text_highlighted
        @view.attributedTitleForState(UIControlStateHighlighted)
      end

      def text_disabled=(value)
        @view.setTitle(value, forState:UIControlStateDisabled)
      end
      def text_disabled
        @view.titleForState(UIControlStateDisabled)
      end

      def attributed_text_disabled=(value)
        @view.setAttributedTitle(value, forState: UIControlStateDisabled)
      end
      def attributed_text_disabled
        @view.attributedTitleForState(UIControlStateDisabled)
      end

=end
    end
  end
end
