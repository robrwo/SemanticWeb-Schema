use utf8;

package SemanticWeb::Schema::courseCode;

# ABSTRACT: The identifier for the [[Course]] used by the course [[provider]] (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'courseCode';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The identifier for the L<SemanticWeb::Schema::Course> used by the course [[provider]] (e.g. CS101 or 6.001).



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
