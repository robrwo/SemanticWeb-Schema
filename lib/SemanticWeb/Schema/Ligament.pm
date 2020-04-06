use utf8;

package SemanticWeb::Schema::Ligament;

# ABSTRACT: A short band of tough

use Moo;

extends qw/ SemanticWeb::Schema::AnatomicalStructure /;


use MooX::JSON_LD 'Ligament';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.4';

=encoding utf8

=head1 DESCRIPTION

A short band of tough, flexible, fibrous connective tissue that functions
to connect multiple bones, cartilages, and structurally support joints.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::AnatomicalStructure>

=cut

1;
