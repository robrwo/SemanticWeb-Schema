use utf8;

package SemanticWeb::Schema::predecessorOf;

# ABSTRACT: A pointer from a previous

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'predecessorOf';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A pointer from a previous, often discontinued variant of the product to its
newer variant.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
