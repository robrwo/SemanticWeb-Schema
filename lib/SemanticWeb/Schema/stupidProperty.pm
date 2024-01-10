use utf8;

package SemanticWeb::Schema::stupidProperty;

# ABSTRACT: This is a StupidProperty! - for testing only.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'stupidProperty';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

This is a StupidProperty! - for testing only.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
