use utf8;

package SemanticWeb::Schema::spouse;

# ABSTRACT: The person's spouse.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'spouse';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The person's spouse.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
