use utf8;

package SemanticWeb::Schema::countryOfLastProcessing;

# ABSTRACT: The place where the item (typically [[Product]]) was last processed and tested before importation.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'countryOfLastProcessing';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The place where the item (typically L<SemanticWeb::Schema::Product>) was last processed and tested before importation.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
