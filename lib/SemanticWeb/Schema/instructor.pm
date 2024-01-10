use utf8;

package SemanticWeb::Schema::instructor;

# ABSTRACT: A person assigned to instruct or provide instructional assistance for the [[CourseInstance]].

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'instructor';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A person assigned to instruct or provide instructional assistance for the L<SemanticWeb::Schema::CourseInstance>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
