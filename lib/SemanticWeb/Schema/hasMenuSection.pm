use utf8;

package SemanticWeb::Schema::hasMenuSection;

# ABSTRACT: A subgrouping of the menu (by dishes

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'hasMenuSection';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A subgrouping of the menu (by dishes, course, serving time period, etc.).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
