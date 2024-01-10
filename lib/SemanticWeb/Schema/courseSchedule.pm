use utf8;

package SemanticWeb::Schema::courseSchedule;

# ABSTRACT: Represents the length and pace of a course

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'courseSchedule';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Represents the length and pace of a course, expressed as a L<SemanticWeb::Schema::Schedule>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
