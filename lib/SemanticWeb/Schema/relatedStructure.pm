use utf8;

package SemanticWeb::Schema::relatedStructure;

# ABSTRACT: Related anatomical structure(s) that are not part of the system but relate or connect to it

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'relatedStructure';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Related anatomical structure(s) that are not part of the system but relate
or connect to it, such as vascular bundles associated with an organ system.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
