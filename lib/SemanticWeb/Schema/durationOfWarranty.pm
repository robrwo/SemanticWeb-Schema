use utf8;

package SemanticWeb::Schema::durationOfWarranty;

# ABSTRACT: The duration of the warranty promise

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'durationOfWarranty';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The duration of the warranty promise. Common unitCode values are ANN for
year, MON for months, or DAY for days.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
