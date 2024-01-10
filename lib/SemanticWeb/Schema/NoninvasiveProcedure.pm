use utf8;

package SemanticWeb::Schema::NoninvasiveProcedure;

# ABSTRACT: A type of medical procedure that involves noninvasive techniques.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'NoninvasiveProcedure';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A type of medical procedure that involves noninvasive techniques.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
