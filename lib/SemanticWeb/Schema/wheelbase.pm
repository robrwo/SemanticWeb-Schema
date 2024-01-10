use utf8;

package SemanticWeb::Schema::wheelbase;

# ABSTRACT: The distance between the centers of the front and rear wheels

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'wheelbase';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The distance between the centers of the front and rear wheels. Typical unit
code(s): CMT for centimeters, MTR for meters, INH for inches, FOT for
foot/feet.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
