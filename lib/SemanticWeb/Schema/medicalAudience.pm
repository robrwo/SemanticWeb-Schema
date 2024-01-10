use utf8;

package SemanticWeb::Schema::medicalAudience;

# ABSTRACT: Medical audience for page.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'medicalAudience';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Medical audience for page.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
