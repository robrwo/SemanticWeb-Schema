use utf8;

package SemanticWeb::Schema::assesses;

# ABSTRACT: The item being described is intended to assess the competency or learning outcome defined by the referenced term.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'assesses';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The item being described is intended to assess the competency or learning
outcome defined by the referenced term.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
