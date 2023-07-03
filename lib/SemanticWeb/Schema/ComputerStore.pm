use utf8;

package SemanticWeb::Schema::ComputerStore;

# ABSTRACT: A computer store.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Store /;


use MooX::JSON_LD 'ComputerStore';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.1';

=encoding utf8

=head1 DESCRIPTION

A computer store.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Store>

=cut

1;
