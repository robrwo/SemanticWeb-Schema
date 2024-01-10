use utf8;

package SemanticWeb::Schema::Flexibility;

# ABSTRACT: Physical activity that is engaged in to improve joint and muscle flexibility.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Flexibility';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Physical activity that is engaged in to improve joint and muscle
flexibility.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
