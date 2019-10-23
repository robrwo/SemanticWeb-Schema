use utf8;

package SemanticWeb::Schema::WebPageElement;

# ABSTRACT: A web page element

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'WebPageElement';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.2';

=encoding utf8

=head1 DESCRIPTION

A web page element, like a table or an image.




=head1 ATTRIBUTES


=head2 C<css_selector>

C<cssSelector>

=begin html

<p>A CSS selector, e.g. of a <a class="localLink"
href="http://schema.org/SpeakableSpecification">SpeakableSpecification</a>
or <a class="localLink"
href="http://schema.org/WebPageElement">WebPageElement</a>. In the latter
case, multiple matches within a page can constitute a single conceptual
"Web page element".<p>

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

<p>An XPath, e.g. of a <a class="localLink"
href="http://schema.org/SpeakableSpecification">SpeakableSpecification</a>
or <a class="localLink"
href="http://schema.org/WebPageElement">WebPageElement</a>. In the latter
case, multiple matches within a page can constitute a single conceptual
"Web page element".<p>

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



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
