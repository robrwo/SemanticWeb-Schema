use utf8;

package SemanticWeb::Schema::typeOfBed;

# ABSTRACT: The type of bed to which the BedDetail refers

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'typeOfBed';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The type of bed to which the BedDetail refers, i.e. the type of bed
available in the quantity indicated by quantity.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
