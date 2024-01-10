use utf8;

package SemanticWeb::Schema::termDuration;

# ABSTRACT: The amount of time in a term as defined by the institution

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'termDuration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The amount of time in a term as defined by the institution. A term is a
length of time where students take one or more classes. Semesters and
quarters are common units for term.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
