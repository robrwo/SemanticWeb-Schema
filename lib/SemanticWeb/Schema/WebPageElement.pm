use utf8;

package SemanticWeb::Schema::WebPageElement;

# ABSTRACT: A web page element

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'WebPageElement';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v14.0.0';

=encoding utf8

=head1 DESCRIPTION

A web page element, like a table or an image.




=head1 ATTRIBUTES


=head2 C<css_selector>

C<cssSelector>

A CSS selector, e.g. of a L<SemanticWeb::Schema::SpeakableSpecification> or L<SemanticWeb::Schema::WebPageElement>. In the latter case, multiple matches within a page can constitute a single conceptual "Web page element".

A css_selector should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CssSelectorType']>

=back

=head2 C<_has_css_selector>

A predicate for the L</css_selector> attribute.

=cut

has css_selector => (
    is        => 'rw',
    predicate => '_has_css_selector',
    json_ld   => 'cssSelector',
);


=head2 C<xpath>



An XPath, e.g. of a L<SemanticWeb::Schema::SpeakableSpecification> or L<SemanticWeb::Schema::WebPageElement>. In the latter case, multiple matches within a page can constitute a single conceptual "Web page element".

A xpath should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::XPathType']>

=back

=head2 C<_has_xpath>

A predicate for the L</xpath> attribute.

=cut

has xpath => (
    is        => 'rw',
    predicate => '_has_xpath',
    json_ld   => 'xpath',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
