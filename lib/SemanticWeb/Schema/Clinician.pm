use utf8;

package SemanticWeb::Schema::Clinician;

# ABSTRACT: Medical clinicians

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Clinician';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Medical clinicians, including practicing physicians and other medical
professionals involved in clinical practice.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
