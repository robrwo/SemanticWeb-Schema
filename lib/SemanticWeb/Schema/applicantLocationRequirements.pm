use utf8;

package SemanticWeb::Schema::applicantLocationRequirements;

# ABSTRACT: The location(s) applicants can apply from

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'applicantLocationRequirements';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The location(s) applicants can apply from. This is usually used for
telecommuting jobs where the applicant does not need to be in a physical
office. Note: This should not be used for citizenship or work visa
requirements.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
