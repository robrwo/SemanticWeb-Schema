use utf8;

package SemanticWeb::Schema::AnaerobicActivity;

# ABSTRACT: Physical activity that is of high-intensity which utilizes the anaerobic metabolism of the body.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'AnaerobicActivity';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Physical activity that is of high-intensity which utilizes the anaerobic
metabolism of the body.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
