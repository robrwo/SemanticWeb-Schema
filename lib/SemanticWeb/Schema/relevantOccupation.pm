use utf8;

package SemanticWeb::Schema::relevantOccupation;

# ABSTRACT: The Occupation for the JobPosting.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'relevantOccupation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The Occupation for the JobPosting.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
