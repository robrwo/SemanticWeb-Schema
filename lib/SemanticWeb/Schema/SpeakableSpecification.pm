use utf8;

package SemanticWeb::Schema::SpeakableSpecification;

# ABSTRACT: A SpeakableSpecification indicates (typically via <a class="localLink" href="http://schema

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'SpeakableSpecification';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.8.2';

=encoding utf8

=head1 DESCRIPTION

=begin html

A SpeakableSpecification indicates (typically via <a class="localLink"
href="http://schema.org/xpath">xpath</a> or <a class="localLink"
href="http://schema.org/cssSelector">cssSelector</a>) sections of a
document that are highlighted as particularly <a class="localLink"
href="http://schema.org/speakable">speakable</a>. Instances of this type
are expected to be used primarily as values of the <a class="localLink"
href="http://schema.org/speakable">speakable</a> property.

=end html




=head1 ATTRIBUTES


=head2 C<css_selector>

C<cssSelector>

=begin html

A CSS selector, e.g. of a <a class="localLink"
href="http://schema.org/SpeakableSpecification">SpeakableSpecification</a>
or <a class="localLink"
href="http://schema.org/WebPageElement">WebPageElement</a>. In the latter
case, multiple matches within a page can constitute a single conceptual
"Web page element".

=end html


A css_selector should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CssSelectorType']>

=back

=cut

has css_selector => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'cssSelector',
);


=head2 C<xpath>



=begin html

An XPath, e.g. of a <a class="localLink"
href="http://schema.org/SpeakableSpecification">SpeakableSpecification</a>
or <a class="localLink"
href="http://schema.org/WebPageElement">WebPageElement</a>. In the latter
case, multiple matches within a page can constitute a single conceptual
"Web page element".

=end html


A xpath should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::XPathType']>

=back

=cut

has xpath => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'xpath',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
