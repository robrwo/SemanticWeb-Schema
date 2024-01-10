use utf8;

package SemanticWeb::Schema::affiliation;

# ABSTRACT: An organization that this person is affiliated with

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'affiliation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An organization that this person is affiliated with. For example, a
school/university, a club, or a team.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
