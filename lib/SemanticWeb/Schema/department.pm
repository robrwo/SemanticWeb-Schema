use utf8;

package SemanticWeb::Schema::department;

# ABSTRACT: A relationship between an organization and a department of that organization

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'department';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A relationship between an organization and a department of that
organization, also described as an organization (allowing different urls,
logos, opening hours). For example: a store with a pharmacy, or a bakery
with a cafe.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
