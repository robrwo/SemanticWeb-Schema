use utf8;

package SemanticWeb::Schema::incentiveCompensation;

# ABSTRACT: Description of bonus and commission compensation aspects of the job.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'incentiveCompensation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Description of bonus and commission compensation aspects of the job.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;