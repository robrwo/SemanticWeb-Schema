use utf8;

package SemanticWeb::Schema::speechToTextMarkup;

# ABSTRACT: Form of markup used

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'speechToTextMarkup';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Form of markup used. eg. [SSML](https://www.w3.org/TR/speech-synthesis11)
or [IPA](https://www.wikidata.org/wiki/Property:P898).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
