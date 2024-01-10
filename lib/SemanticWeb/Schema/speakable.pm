use utf8;

package SemanticWeb::Schema::speakable;

# ABSTRACT: Indicates sections of a Web page that are particularly 'speakable' in the sense of being highlighted as being especially appropriate for text-to-speech conversion

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'speakable';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates sections of a Web page that are particularly 'speakable' in the sense of being highlighted as being especially appropriate for text-to-speech conversion. Other sections of a page may also be usefully spoken in particular circumstances; the 'speakable' property serves to indicate the parts most likely to be generally useful for speech.

The I<speakable> property can be repeated an arbitrary number of times, with three kinds of possible 'content-locator' values:

1.) I<id-value> URL references - uses I<id-value> of an element in the page being annotated. The simplest use of I<speakable> has (potentially relative) URL values, referencing identified sections of the document concerned.

2.) CSS Selectors - addresses content in the annotated page, e.g. via class attribute. Use the [[cssSelector]] property.

3.)  XPaths - addresses content via XPaths (assuming an XML view of the content). Use the [[xpath]] property.

For more sophisticated markup of speakable sections beyond simple ID references, either CSS selectors or XPath expressions to pick out document section(s) as speakable. For this
we define a supporting type, L<SemanticWeb::Schema::SpeakableSpecification>  which is defined to be a possible value of the I<speakable> property.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
