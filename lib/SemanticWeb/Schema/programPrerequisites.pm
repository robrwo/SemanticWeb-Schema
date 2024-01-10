use utf8;

package SemanticWeb::Schema::programPrerequisites;

# ABSTRACT: Prerequisites for enrolling in the program.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'programPrerequisites';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Prerequisites for enrolling in the program.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
