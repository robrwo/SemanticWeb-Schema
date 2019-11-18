use utf8;

package SemanticWeb::Schema::Specialty;

# ABSTRACT: Any branch of a field in which people typically develop specific expertise

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'Specialty';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.2';

=encoding utf8

=head1 DESCRIPTION

Any branch of a field in which people typically develop specific expertise,
usually after significant study, time, and effort.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
