use utf8;

package SemanticWeb::Schema::LinkRole;

# ABSTRACT: A Role that represents a Web link e

use Moo;

extends qw/ SemanticWeb::Schema::Role /;


use MooX::JSON_LD 'LinkRole';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

A Role that represents a Web link e.g. as expressed via the 'url' property.
Its linkRelationship property can indicate URL-based and plain textual link
types e.g. those in IANA link registry or others such as 'amphtml'. This
structure provides a placeholder where details from HTML's link element can
be represented outside of HTML, e.g. in JSON-LD feeds.




=head1 ATTRIBUTES


=head2 C<in_language>

C<inLanguage>

=begin html

<p>The language of the content or performance or used in an action. Please
use one of the language codes from the <a
href="http://tools.ietf.org/html/bcp47">IETF BCP 47 standard</a>. See also
<a class="localLink"
href="http://schema.org/availableLanguage">availableLanguage</a>.<p>

=end html


A in_language should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Language']>

=item C<Str>

=back

=cut

has in_language => (
    is        => 'rw',
    predicate => '_has_in_language',
    json_ld   => 'inLanguage',
);


=head2 C<link_relationship>

C<linkRelationship>

Indicates the relationship type of a Web link.


A link_relationship should be one of the following types:

=over

=item C<Str>

=back

=cut

has link_relationship => (
    is        => 'rw',
    predicate => '_has_link_relationship',
    json_ld   => 'linkRelationship',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Role>

=cut

1;
