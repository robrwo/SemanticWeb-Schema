use utf8;

package SemanticWeb::Schema::Bone;

# ABSTRACT: Rigid connective tissue that comprises up the skeletal structure of the human body.

use Moo;

extends qw/ SemanticWeb::Schema::AnatomicalStructure /;


use MooX::JSON_LD 'Bone';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v9.0.0';

=encoding utf8

=head1 DESCRIPTION

Rigid connective tissue that comprises up the skeletal structure of the
human body.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::AnatomicalStructure>

=cut

1;
