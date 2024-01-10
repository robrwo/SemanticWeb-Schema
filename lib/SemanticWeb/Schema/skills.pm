use utf8;

package SemanticWeb::Schema::skills;

# ABSTRACT: A statement of knowledge

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'skills';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A statement of knowledge, skill, ability, task or any other assertion
expressing a competency that is desired or required to fulfill this role or
to work in this occupation.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
