use utf8;

package SemanticWeb::Schema::Tuesday;

# ABSTRACT: The day of the week between Monday and Wednesday.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Tuesday';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The day of the week between Monday and Wednesday.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
