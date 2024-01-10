use utf8;

package SemanticWeb::Schema::maintainer;

# ABSTRACT: A maintainer of a [[Dataset]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'maintainer';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A maintainer of a L<SemanticWeb::Schema::Dataset>, software package (L<SemanticWeb::Schema::SoftwareApplication>), or other L<SemanticWeb::Schema::Project>. A maintainer is a L<SemanticWeb::Schema::Person> or L<SemanticWeb::Schema::Organization> that manages contributions to, and/or publication of, some (typically complex) artifact. It is common for distributions of software and data to be based on "upstream" sources. When [[maintainer]] is applied to a specific version of something e.g. a particular version or packaging of a L<SemanticWeb::Schema::Dataset>, it is always  possible that the upstream source has a different maintainer. The [[isBasedOn]] property can be used to indicate such relationships between datasets to make the different maintenance roles clear. Similarly in the case of software, a package may have dedicated maintainers working on integration into software distributions such as Ubuntu, as well as upstream maintainers of the underlying work.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
