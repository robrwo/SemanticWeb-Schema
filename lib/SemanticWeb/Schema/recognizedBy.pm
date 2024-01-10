use utf8;

package SemanticWeb::Schema::recognizedBy;

# ABSTRACT: An organization that acknowledges the validity

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'recognizedBy';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An organization that acknowledges the validity, value or utility of a
credential. Note: recognition may include a process of quality assurance or
accreditation.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
