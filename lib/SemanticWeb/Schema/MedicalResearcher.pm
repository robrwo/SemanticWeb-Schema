use utf8;

package SemanticWeb::Schema::MedicalResearcher;

# ABSTRACT: Medical researchers.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'MedicalResearcher';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Medical researchers.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
