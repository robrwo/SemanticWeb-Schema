use utf8;

package SemanticWeb::Schema::exampleOfWork;

# ABSTRACT: A creative work that this work is an example/instance/realization/derivation of.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'exampleOfWork';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A creative work that this work is an
example/instance/realization/derivation of.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
