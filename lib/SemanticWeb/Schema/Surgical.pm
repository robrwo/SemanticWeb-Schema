use utf8;

package SemanticWeb::Schema::Surgical;

# ABSTRACT: A specific branch of medical science that pertains to treating diseases

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Surgical';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A specific branch of medical science that pertains to treating diseases,
injuries and deformities by manual and instrumental means.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
