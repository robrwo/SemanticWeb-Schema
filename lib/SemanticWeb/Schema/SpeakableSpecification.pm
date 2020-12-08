use utf8;

package SemanticWeb::Schema::SpeakableSpecification;

# ABSTRACT: A SpeakableSpecification indicates (typically via [[xpath]] or [[cssSelector]]) sections of a document that are highlighted as particularly [[speakable]]

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'SpeakableSpecification';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.01.0';

=encoding utf8

=head1 DESCRIPTION

A SpeakableSpecification indicates (typically via [[xpath]] or [[cssSelector]]) sections of a document that are highlighted as particularly [[speakable]]. Instances of this type are expected to be used primarily as values of the [[speakable]] property.



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



L<SemanticWeb::Schema::Intangible>

=cut

1;
