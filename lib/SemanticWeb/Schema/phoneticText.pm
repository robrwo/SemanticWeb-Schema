use utf8;

package SemanticWeb::Schema::phoneticText;

# ABSTRACT: Representation of a text [[textValue]] using the specified [[speechToTextMarkup]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'phoneticText';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Representation of a text [[textValue]] using the specified [[speechToTextMarkup]]. For example the city name of Houston in IPA: /ËhjuËstÉn/.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
