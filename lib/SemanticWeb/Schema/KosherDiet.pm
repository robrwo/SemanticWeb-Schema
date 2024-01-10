use utf8;

package SemanticWeb::Schema::KosherDiet;

# ABSTRACT: A diet conforming to Jewish dietary practices.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'KosherDiet';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A diet conforming to Jewish dietary practices.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
