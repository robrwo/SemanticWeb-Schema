use utf8;

package SemanticWeb::Schema::member;

# ABSTRACT: A member of an Organization or a ProgramMembership

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'member';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A member of an Organization or a ProgramMembership. Organizations can be
members of organizations; ProgramMembership is typically for individuals.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
