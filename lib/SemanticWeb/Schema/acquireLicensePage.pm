use utf8;

package SemanticWeb::Schema::acquireLicensePage;

# ABSTRACT: Indicates a page documenting how licenses can be purchased or otherwise acquired

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'acquireLicensePage';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates a page documenting how licenses can be purchased or otherwise
acquired, for the current item.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
