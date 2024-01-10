use utf8;

package SemanticWeb::Schema::TollFree;

# ABSTRACT: The associated telephone number is toll free.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'TollFree';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The associated telephone number is toll free.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
